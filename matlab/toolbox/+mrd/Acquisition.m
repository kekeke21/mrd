% This file was generated by the "yardl" tool. DO NOT EDIT.

classdef Acquisition < handle
  properties
    flags
    idx
    measurement_uid
    scan_counter
    acquisition_time_stamp
    our_acquisition_time_stamp
    physiology_time_stamp
    channel_order
    discard_pre
    discard_post
    center_sample
    encoding_space_ref
    sample_time_us
    position
    read_dir
    phase_dir
    slice_dir
    patient_table_position
    user_int
    user_float
    data
    trajectory
  end

  methods
    function self = Acquisition(kwargs)
      arguments
        kwargs.flags = mrd.AcquisitionFlags(0);
        kwargs.idx = mrd.EncodingCounters();
        kwargs.measurement_uid = uint32(0);
        kwargs.scan_counter = yardl.None;
        kwargs.acquisition_time_stamp = yardl.None;
        kwargs.our_acquisition_time_stamp = yardl.None;
        kwargs.physiology_time_stamp = uint32.empty();
        kwargs.channel_order = uint32.empty();
        kwargs.discard_pre = yardl.None;
        kwargs.discard_post = yardl.None;
        kwargs.center_sample = yardl.None;
        kwargs.encoding_space_ref = yardl.None;
        kwargs.sample_time_us = yardl.None;
        kwargs.position = repelem(single(0), 3, 1);
        kwargs.read_dir = repelem(single(0), 3, 1);
        kwargs.phase_dir = repelem(single(0), 3, 1);
        kwargs.slice_dir = repelem(single(0), 3, 1);
        kwargs.patient_table_position = repelem(single(0), 3, 1);
        kwargs.user_int = int32.empty();
        kwargs.user_float = single.empty();
        kwargs.data = single.empty(0, 0);
        kwargs.trajectory = single.empty(0, 0);
      end
      self.flags = kwargs.flags;
      self.idx = kwargs.idx;
      self.measurement_uid = kwargs.measurement_uid;
      self.scan_counter = kwargs.scan_counter;
      self.acquisition_time_stamp = kwargs.acquisition_time_stamp;
      self.our_acquisition_time_stamp = kwargs.our_acquisition_time_stamp;
      self.physiology_time_stamp = kwargs.physiology_time_stamp;
      self.channel_order = kwargs.channel_order;
      self.discard_pre = kwargs.discard_pre;
      self.discard_post = kwargs.discard_post;
      self.center_sample = kwargs.center_sample;
      self.encoding_space_ref = kwargs.encoding_space_ref;
      self.sample_time_us = kwargs.sample_time_us;
      self.position = kwargs.position;
      self.read_dir = kwargs.read_dir;
      self.phase_dir = kwargs.phase_dir;
      self.slice_dir = kwargs.slice_dir;
      self.patient_table_position = kwargs.patient_table_position;
      self.user_int = kwargs.user_int;
      self.user_float = kwargs.user_float;
      self.data = kwargs.data;
      self.trajectory = kwargs.trajectory;
    end

    function res = coils(self)
      res = size(self.data, ndims(self.data)-(0));
      return
    end

    function res = samples(self)
      res = size(self.data, ndims(self.data)-(1));
      return
    end

    function res = active_channels(self)
      res = length(self.channel_order);
      return
    end

    function res = trajectory_dimensions(self)
      res = size(self.trajectory, ndims(self.trajectory)-(0));
      return
    end

    function res = trajectory_samples(self)
      res = size(self.trajectory, ndims(self.trajectory)-(1));
      return
    end


    function res = eq(self, other)
      res = ...
        isa(other, "mrd.Acquisition") && ...
        isequal(self.flags, other.flags) && ...
        isequal(self.idx, other.idx) && ...
        isequal(self.measurement_uid, other.measurement_uid) && ...
        isequal(self.scan_counter, other.scan_counter) && ...
        isequal(self.acquisition_time_stamp, other.acquisition_time_stamp) && ...
        isequal(self.our_acquisition_time_stamp, other.our_acquisition_time_stamp) && ...
        isequal(self.physiology_time_stamp, other.physiology_time_stamp) && ...
        isequal(self.channel_order, other.channel_order) && ...
        isequal(self.discard_pre, other.discard_pre) && ...
        isequal(self.discard_post, other.discard_post) && ...
        isequal(self.center_sample, other.center_sample) && ...
        isequal(self.encoding_space_ref, other.encoding_space_ref) && ...
        isequal(self.sample_time_us, other.sample_time_us) && ...
        isequal(self.position, other.position) && ...
        isequal(self.read_dir, other.read_dir) && ...
        isequal(self.phase_dir, other.phase_dir) && ...
        isequal(self.slice_dir, other.slice_dir) && ...
        isequal(self.patient_table_position, other.patient_table_position) && ...
        isequal(self.user_int, other.user_int) && ...
        isequal(self.user_float, other.user_float) && ...
        isequal(self.data, other.data) && ...
        isequal(self.trajectory, other.trajectory);
    end

    function res = ne(self, other)
      res = ~self.eq(other);
    end
  end

  methods (Static)
    function z = zeros(varargin)
      elem = mrd.Acquisition();
      if nargin == 0
        z = elem;
        return;
      end
      sz = [varargin{:}];
      if isscalar(sz)
        sz = [sz, sz];
      end
      z = reshape(repelem(elem, prod(sz)), sz);
    end
  end
end
