################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################

require 'ffi'
require_relative 'ffi/version'

module Zyre
  module FFI
    module LibC
      extend ::FFI::Library
      ffi_lib ::FFI::Platform::LIBC
      attach_function :free, [ :pointer ], :void, blocking: true
    end

    extend ::FFI::Library

    def self.available?
      @available
    end

    begin
      lib_name = 'libzyre'
      lib_paths = ['/usr/local/lib', '/opt/local/lib', '/usr/lib64']
        .map { |path| "#{path}/#{lib_name}.#{::FFI::Platform::LIBSUFFIX}" }
      ffi_lib lib_paths + [lib_name]
      @available = true
    rescue LoadError
      warn ""
      warn "WARNING: ::Zyre::FFI is not available without libzyre."
      warn ""
      @available = false
    end

    if available?
      opts = {
        blocking: true  # only necessary on MRI to deal with the GIL.
      }

      begin # DRAFT method
        attach_function :zyre_new, [:string], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_new() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_destroy, [:pointer], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_destroy() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_uuid, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_uuid() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_name, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_name() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_set_header, [:pointer, :string, :string, :varargs], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_set_header() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_set_verbose, [:pointer], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_set_verbose() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_set_port, [:pointer, :int], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_set_port() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_set_interval, [:pointer, :size_t], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_set_interval() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_set_interface, [:pointer, :string], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_set_interface() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_set_endpoint, [:pointer, :string, :varargs], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_set_endpoint() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_gossip_bind, [:pointer, :string, :varargs], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_gossip_bind() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_gossip_connect, [:pointer, :string, :varargs], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_gossip_connect() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_start, [:pointer], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_start() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_stop, [:pointer], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_stop() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_join, [:pointer, :string], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_join() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_leave, [:pointer, :string], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_leave() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_recv, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_recv() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_whisper, [:pointer, :string, :pointer], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_whisper() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_shout, [:pointer, :string, :pointer], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_shout() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_whispers, [:pointer, :string, :string, :varargs], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_whispers() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_shouts, [:pointer, :string, :string, :varargs], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_shouts() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_peers, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_peers() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_own_groups, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_own_groups() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_peer_groups, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_peer_groups() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_peer_address, [:pointer, :string], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_peer_address() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_peer_header_value, [:pointer, :string, :string], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_peer_header_value() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_socket, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_socket() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_print, [:pointer], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_print() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_version, [], :uint64, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_version() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_test, [:bool], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_test() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end

      require_relative 'ffi/zyre'

      begin # DRAFT method
        attach_function :zyre_event_new, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_event_new() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_destroy, [:pointer], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_event_destroy() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_type, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_event_type() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_peer_uuid, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_event_peer_uuid() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_peer_name, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_event_peer_name() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_peer_addr, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_event_peer_addr() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_headers, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_event_headers() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_header, [:pointer, :string], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_event_header() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_group, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_event_group() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_msg, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_event_msg() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_print, [:pointer], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_event_print() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_test, [:bool], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function zyre_event_test() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end

      require_relative 'ffi/event'
    end
  end
end

################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################
